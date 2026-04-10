# Contributing to OpenClaude

Thanks for your interest in contributing to OpenClaude!

---

## 📋 Before You Start

- Search existing [issues](https://github.com/yourusername/openclaude/issues) before opening a new one
- Use issues for confirmed bugs and actionable features
- For larger changes, open an issue first to discuss scope
- For security reports, follow [SECURITY.md](SECURITY.md)

---

## 🛠️ Local Setup

### Prerequisites

- **Bun** (recommended) or Node.js 18+
- **Git**
- **ripgrep** (for search functionality)

### Installation

```bash
# Clone repository
git clone https://github.com/yourusername/openclaude.git
cd openclaude

# Install dependencies
bun install

# Build
bun run build

# Test
bun run smoke
```

### Run Locally

```bash
# Development mode
bun run dev

# With specific provider
bun run dev:ollama
bun run dev:openai
bun run dev:gemini
```

---

## 🔄 Development Workflow

### Keep PRs Focused

- One problem or feature per PR
- Clear, descriptive commit messages
- Reference related issues

### Code Style

- Follow existing patterns
- Use TypeScript strict mode
- Add type annotations
- Keep functions small and focused

### Testing

```bash
# Run all tests
bun test

# Run specific test file
bun test src/utils/test.test.ts

# Run with coverage
bun run test:coverage
```

---

## 📝 Commit Guidelines

### Commit Message Format

```
type(scope): description

[optional body]
```

### Types

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

### Examples

```
feat(tools): add support for PDF reading
fix(bash): handle sandbox restrictions correctly
docs(readme): update installation instructions
```

---

## 🧪 Testing Requirements

### Before Submitting

- [ ] All existing tests pass
- [ ] New features have tests
- [ ] Code coverage maintained or improved
- [ ] Type checking passes (`bun run typecheck`)
- [ ] Build succeeds (`bun run build`)

### Test Categories

**Unit Tests**: Test individual functions and utilities
```bash
bun test src/utils/
```

**Integration Tests**: Test tool interactions
```bash
bun test src/tools/
```

**Provider Tests**: Test API integrations
```bash
bun run test:provider
```

---

## 📚 Documentation

### Update Documentation

When adding features:
- Update README.md if needed
- Add inline code comments
- Update type definitions
- Add examples to docs/

### Code Comments

- Explain "why", not "what"
- Document complex logic
- Note edge cases
- Include examples for public APIs

---

## 🎯 Areas for Contribution

### High Priority

- [ ] Original prompts implementation
- [ ] Test coverage improvement
- [ ] Error message clarity
- [ ] Documentation improvements

### Medium Priority

- [ ] Performance optimizations
- [ ] New provider integrations
- [ ] Tool enhancements
- [ ] UI/UX improvements

### Low Priority

- [ ] Refactoring
- [ ] Code style improvements
- [ ] Minor bug fixes

---

## 🔒 Security Considerations

### Code Security

- No hardcoded secrets
- Validate all inputs
- Use sandbox restrictions
- Follow permission model

### Sensitive Operations

Always require user confirmation for:
- Destructive file operations
- Network requests
- Command execution
- System modifications

---

## 📦 Pull Request Process

### Before Submitting

1. **Rebase** on latest main
   ```bash
   git fetch origin
   git rebase origin/main
   ```

2. **Run all checks**
   ```bash
   bun run build
   bun test
   bun run typecheck
   ```

3. **Update documentation** if needed

4. **Add tests** for new features

### PR Template

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## Testing
- [ ] Tests added/updated
- [ ] All tests passing
- [ ] Type checking passing

## Checklist
- [ ] Code follows style guidelines
- [ ] Documentation updated
- [ ] No security issues introduced
```

---

## 🤝 Code Review

### What Reviewers Look For

- **Correctness**: Does it work as intended?
- **Security**: Are there security issues?
- **Performance**: Is it efficient?
- **Maintainability**: Is it readable and well-structured?
- **Testing**: Are there adequate tests?

### Response Time

- Initial review: Within 2-3 days
- Follow-up reviews: Within 1-2 days
- Urgent fixes: Within 24 hours

---

## 📞 Getting Help

### Resources

- **Documentation**: See `docs/` folder
- **Issues**: [GitHub Issues](https://github.com/yourusername/openclaude/issues)
- **Discussions**: [GitHub Discussions](https://github.com/yourusername/openclaude/discussions)

### Questions

For general questions:
1. Check existing discussions
2. Search closed issues
3. Open a new discussion

---

## 🎉 Recognition

Contributors are recognized in:
- README.md contributors section
- Release notes
- Project documentation

---

## 📜 License

By contributing, you agree that your contributions will be licensed under the same license as the project (MIT License for original code).

---

**Thank you for contributing to OpenClaude! 🚀**
