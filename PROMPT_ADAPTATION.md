# Prompt Adaptation Guide

This document explains how Claude Code's prompts have been adapted for OpenClaude Clone to work with multiple LLM providers while maintaining the core functionality.

## Overview

The prompt system in OpenClaude Clone consists of three layers:

1. **Base System Prompts** (`src/constants/prompts.ts`)
2. **Extended Tool Prompts** (`src/constants/extendedToolPrompts.ts`)
3. **Prompt Examples** (`src/constants/promptExamples.ts`)

## Base System Prompts

### Identity Section

**Original (Claude Code):**
```
You are Claude Code, Anthropic's official CLI for Claude...
```

**Adapted (OpenClaude Clone):**
```
You are OpenClaude Clone, an open-source AI coding assistant...

## Capabilities
- Comprensión y generación de código en múltiples lenguajes de programación
- Razonamiento sostenido a través de conversaciones largas
- Ejecución de comandos de shell con sandboxing de seguridad
- Manipulación de archivos (lectura, edición, escritura)
- Búsqueda en código y en web
- Delegación de tareas a sub-agentes especializados
```

**Changes:**
- Removed Anthropic-specific references
- Added capability list for clarity
- Maintained the core functionality description

### System Section

**Preserved:**
- Tool execution permission model
- System reminder handling
- Automatic context compression
- Hook system integration

**Adapted:**
- Generic error handling instructions
- Provider-agnostic tool usage

### Task Execution Section

**Preserved:**
- "Do not add features beyond what was asked"
- "Do not create helpers for one-time operations"
- "Three similar lines of code is better than premature abstraction"
- Security vulnerability awareness
- Code style guidelines

**Added:**
- More explicit instructions for non-Anthropic models
- Emphasis on verification steps

### Actions Section

**Preserved:**
- Risky action categories
- User confirmation requirements
- Examples of dangerous operations

### Tool Usage Section

**Preserved:**
- Prefer dedicated tools over Bash
- Parallel tool calling guidelines
- Tool-specific instructions

## Extended Tool Prompts

The `extendedToolPrompts.ts` file adds detailed instructions that were implicit in Claude Code:

### Bash Tool Extensions

Added explicit instructions for:
- Git commit workflow with HEREDOC
- Pull request creation
- Multiple command execution patterns
- Background execution guidelines

### File Operation Extensions

Added best practices for:
- Reading large files
- Edit uniqueness requirements
- Write vs Edit decision tree

### Search Extensions

Added guidance for:
- When to use Glob vs Grep
- Pattern examples
- When to escalate to Agent tool

### Task Management Extensions

Added detailed examples for:
- TodoWrite state management
- Agent delegation patterns
- Prompt writing for agents

## Prompt Examples

The `promptExamples.ts` provides real-world usage patterns:

### Categories

1. **File Operations**: Read, edit, write examples
2. **Search Operations**: Glob, grep, agent usage
3. **Task Management**: Todo lists, parallel execution
4. **Git Operations**: Commits, PRs, branching
5. **Web Operations**: Search, fetch documentation
6. **Error Handling**: Diagnosis, clarification
7. **Agent Delegation**: Code review, parallel research

### Example Format

Each example follows this structure:
```xml
<example>
user: [request]
assistant: [reasoning and actions]
[tool calls and results]
assistant: [response]
</example>
```

## Provider-Specific Adaptations

### For Anthropic-Compatible Models

- Full prompt structure maintained
- Tool calling format: native Anthropic format
- Streaming: SSE with tool_use blocks

### For OpenAI-Compatible Models

- Prompt structure adapted to user/assistant roles
- Tool calling: function calling format
- Streaming: chunks with delta content

### For Local Models (Ollama)

- Simplified prompts for smaller context windows
- Tool calling: depends on model capability
- Streaming: NDJSON format

## Prompt Assembly

The system prompt is assembled dynamically:

```typescript
async function getSystemPrompt() {
  const sections = [
    getIntroSection(),
    getSystemSection(),
    getTasksSection(),
    getActionsSection(),
    getToolsSection(),
    getToneSection(),
    getEnvironmentSection(),
    getDynamicSections(),
  ];
  
  return sections.filter(s => s !== null);
}
```

### Section Priority

1. Identity (priority: 0)
2. System (priority: 1)
3. Tasks (priority: 2)
4. Actions (priority: 3)
5. Tools (priority: 4)
6. Tone (priority: 5)
7. Environment (priority: 6) - dynamic
8. Memory (priority: 7) - dynamic
9. MCP Instructions (priority: 8) - dynamic

### Caching Strategy

- **Static sections** (before boundary): Cache with 'global' scope
- **Dynamic sections** (after boundary): Cache with 'session' scope
- **Boundary marker**: `__SYSTEM_PROMPT_DYNAMIC_BOUNDARY__`

## Differences from Claude Code

### Removed

1. `USER_TYPE === 'ant'` internal checks
2. Undercover mode references
3. Internal feature flags (ABLATION_BASELINE, etc.)
4. Anthropic-specific model names
5. Internal analytics references

### Added

1. Provider-agnostic model handling
2. Extended tool instructions
3. Usage examples
4. Simplified configuration

### Preserved

1. Core prompt structure
2. Tool descriptions and prompts
3. Action safety guidelines
4. Task execution principles
5. Tone and style guidance

## Testing Prompts

To verify prompts work across providers:

```bash
# Test with Ollama
CLAUDE_CODE_USE_OPENAI=1 \
OPENAI_BASE_URL=http://localhost:11434/v1 \
OPENAI_MODEL=llama3.2 \
bun run dev

# Test with OpenAI
CLAUDE_CODE_USE_OPENAI=1 \
OPENAI_API_KEY=sk-... \
OPENAI_MODEL=gpt-4o \
bun run dev

# Test with DeepSeek
CLAUDE_CODE_USE_OPENAI=1 \
OPENAI_BASE_URL=https://api.deepseek.com/v1 \
OPENAI_API_KEY=sk-... \
OPENAI_MODEL=deepseek-chat \
bun run dev
```

## Future Enhancements

1. **Prompt Templates**: Provider-specific prompt optimizations
2. **Tool Capability Detection**: Adapt prompts based on model capabilities
3. **Context Optimization**: Dynamic prompt compression for smaller models
4. **Multi-Language Support**: Translated prompts for non-English responses

## Contributing

When modifying prompts:

1. Maintain the section priority order
2. Keep prompts provider-agnostic
3. Add examples to `promptExamples.ts`
4. Test with multiple providers
5. Update this documentation

## References

- Original Claude Code prompts: `Claude/src/constants/prompts.ts`
- OpenClaude prompts: `OpenClaude/src/constants/prompts.ts`
- Extended instructions: `OpenClaude/src/constants/extendedToolPrompts.ts`
- Examples: `OpenClaude/src/constants/promptExamples.ts`
