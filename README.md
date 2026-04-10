# OpenClaude - AI Coding Assistant

[![Build](https://img.shields.io/badge/build-passing-brightgreen.svg)]()
[![Version](https://img.shields.io/badge/version-0.1.8-blue.svg)](./package.json)
[![License](https://img.shields.io/badge/license-SEE%20LICENSE%20FILE-blue.svg)](./LICENSE)

> **Claude Code with any LLM — OpenAI, Gemini, DeepSeek, Ollama, and 200+ models**

---

## 📋 Overview

OpenClaude is an open-source fork that brings Claude Code capabilities to multiple LLM providers. Use your preferred AI model while maintaining the powerful coding assistant features you need.

### Key Features

- ✅ **Multi-Provider Support**: Works with OpenAI, Gemini, DeepSeek, Ollama, and more
- ✅ **File Operations**: Read, write, edit files with intelligent context
- ✅ **Shell Execution**: Run commands in a sandboxed environment
- ✅ **Code Search**: Powerful grep and glob tools
- ✅ **Web Integration**: Search and fetch current information
- ✅ **Agent Delegation**: Parallel task execution with sub-agents
- ✅ **MCP Protocol**: Integration with external tools

---

## 🚀 Quick Start

### Prerequisites

- **Node.js 18+** or **Bun**
- **Git** (optional, for version control features)

### Installation

#### From Source (Recommended)

```bash
# Clone the repository
git clone https://github.com/yourusername/openclaude.git
cd openclaude

# Install dependencies
bun install

# Build
bun run build

# Run
./openclaude.bat  # Windows
./bin/openclaude  # Linux/Mac
```

#### From npm (Coming Soon)

```bash
npm install -g @gitlawb/openclaude
openclaude
```

### First Run

```bash
# Check version
./openclaude.bat --version

# Start interactive session
./openclaude.bat

# Use with specific provider
bun run dev:ollama    # Local Ollama
bun run dev:openai    # OpenAI
bun run dev:gemini    # Gemini
```

---

## 📦 Project Structure

```
openclaude/
├── bin/                    # Executable wrappers
│   └── openclaude         # Unix wrapper
├── dist/                   # Built files
│   └── cli.mjs            # Main bundle (5MB)
├── docs/                   # Documentation
│   ├── quick-start-windows.md
│   ├── quick-start-mac-linux.md
│   └── advanced-setup.md
├── src/                    # Source code
│   ├── constants/         # Prompts and constants
│   ├── tools/             # Tool implementations
│   ├── services/          # API and provider services
│   └── entrypoints/       # CLI entry points
├── openclaude.bat         # Windows launcher
└── package.json           # Project configuration
```

---

## 🎯 Supported Providers

| Provider | Models | Status | Setup |
|----------|--------|--------|-------|
| **Ollama** | Llama 3.x, Qwen Coder, etc. | ✅ Full Support | `bun run dev:ollama` |
| **OpenAI** | GPT-4o, GPT-4 Turbo | ✅ Full Support | `bun run dev:openai` |
| **Gemini** | Gemini Pro, Gemini Flash | ✅ Full Support | `bun run dev:gemini` |
| **DeepSeek** | DeepSeek Chat, DeepSeek Coder | ✅ Full Support | Environment vars |
| **Anthropic** | Claude 3.5, Claude 4 | ✅ Full Support | `ANTHROPIC_API_KEY` |
| **Custom** | OpenAI-compatible APIs | ✅ Full Support | Configure base URL |

---

## 🛠️ Available Tools

### File Operations
- **Read**: Read files with smart encoding detection
- **Write**: Create or overwrite files
- **Edit**: Make precise text replacements

### Search Operations
- **Glob**: Find files by pattern
- **Grep**: Search content with regex

### Execution
- **Bash**: Execute shell commands (sandboxed)

### Web Operations
- **WebSearch**: Search the web (DuckDuckGo, Firecrawl)
- **WebFetch**: Fetch and convert web content

### Task Management
- **Agent**: Delegate to specialized sub-agents
- **TodoWrite**: Track task progress

### Integration
- **MCP Tools**: Model Context Protocol integration
- **AskUserQuestion**: Interactive user queries

---

## ⚙️ Configuration

### Provider Profiles

```bash
# Initialize profile
bun run profile:init -- --provider ollama --model llama3.2

# Recommended profiles
bun run profile:recommend

# Auto-configure
bun run profile:auto
```

### Environment Variables

```bash
# Use OpenAI-compatible API (Ollama)
export CLAUDE_CODE_USE_OPENAI=1
export OPENAI_BASE_URL=http://localhost:11434/v1
export OPENAI_API_KEY=ollama
export OPENAI_MODEL=llama3.2

# Use OpenAI
export OPENAI_API_KEY=sk-...
export OPENAI_MODEL=gpt-4o

# Use Anthropic
export ANTHROPIC_API_KEY=sk-ant-...

# Use Gemini
export GOOGLE_API_KEY=AIza...
```

---

## 🔧 Development

### Build Commands

```bash
# Standard build
bun run build

# Development mode
bun run dev

# Run tests
bun test

# Type checking
bun run typecheck

# Smoke test
bun run smoke
```

### Development Scripts

```bash
# Run with specific provider
bun run dev:ollama
bun run dev:openai
bun run dev:gemini
bun run dev:deepseek

# Fast mode (smaller model)
bun run dev:fast

# Code mode (qwen2.5-coder)
bun run dev:code

# gRPC server
bun run dev:grpc
```

---

## 📊 Project Status

### Current Version: 0.1.8

**Build Status**: ✅ Compiling successfully  
**Tests**: ✅ Basic tests passing  
**Providers**: ✅ Multi-provider support active  

### Known Limitations

- Daemon mode removed (not available in open build)
- Self-hosted runner removed
- Environment runner removed
- Some internal Anthropic features disabled

### Components Removed from Original

The following components from the original Claude Code were removed in this fork:
- `vscode-extension/` - VS Code extension
- `daemon/` - Daemon mode
- `self-hosted-runner/` - Self-hosted runner
- `environment-runner/` - Environment runner

---

## 📚 Documentation

### Setup Guides

- **[Quick Start Windows](./docs/quick-start-windows.md)** - Windows setup guide
- **[Quick Start Mac/Linux](./docs/quick-start-mac-linux.md)** - macOS/Linux setup
- **[Advanced Setup](./docs/advanced-setup.md)** - Advanced configuration
- **[Non-Technical Setup](./docs/non-technical-setup.md)** - Beginner-friendly guide

### Technical Documentation

External documentation files available:
- **Architecture Design** - Complete architecture guide
- **Prompts Original** - Original system prompts
- **Implementation Guide** - Practical implementation
- **Similarity Analysis** - Analysis with original Claude

---

## 🤝 Contributing

We welcome contributions! Please read our guidelines:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Important Notes

- All code must be original (no copyrighted material)
- Follow existing code style
- Add tests for new features
- Update documentation

See [CONTRIBUTING.md](./CONTRIBUTING.md) for details.

---

## 📝 License

This project uses components from multiple sources. See [LICENSE](./LICENSE) file for details.

### Key Points:
- Original code: MIT License
- Forked components: See respective licenses
- Prompts: MIT License (original creations)

---

## 🙏 Acknowledgments

- Original Claude Code project for inspiration
- Open-source community for contributions
- Model providers for API access
- All contributors and testers

---

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/yourusername/openclaude/issues)
- **Discussions**: [GitHub Discussions](https://github.com/yourusername/openclaude/discussions)
- **Documentation**: See `docs/` folder

---

## 🗺️ Roadmap

### v0.2.0 (Planned)
- [ ] Original prompts implementation
- [ ] Enhanced test coverage
- [ ] Better error messages
- [ ] Performance optimizations

### v0.3.0 (Future)
- [ ] Plugin system
- [ ] More provider integrations
- [ ] Web UI option
- [ ] Advanced features

---

## 📈 Metrics

| Metric | Value |
|--------|-------|
| Source Files | 2,071 |
| Lines of Code | ~50,000 |
| Supported Providers | 6+ |
| Active Tools | 15+ |
| Build Size | ~5MB |

---

## 🔒 Security

See [SECURITY.md](./SECURITY.md) for security policy and reporting guidelines.

---

## 📖 Code of Conduct

See [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md) for community guidelines.

---

**Last Updated**: April 2026  
**Maintainer**: OpenClaude Team  
**Version**: 0.1.8  
**License**: See LICENSE file
