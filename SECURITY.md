# Security Policy

## 📋 Supported Versions

OpenClaude is currently maintained on the latest `main` branch and the latest release only.

| Version | Supported |
| ------- | --------- |
| Latest release | ✅ Yes |
| Older releases | ❌ No |
| Unreleased forks/modified builds | ❌ No |

Security fixes are released in the next patch version and may be backported to `main` before package release.

---

## 🔐 Security Features

### Built-in Security

OpenClaude includes several security features:

#### Sandboxed Execution
- Commands run in sandboxed environment
- Filesystem access restrictions
- Network access restrictions
- Configurable permission levels

#### Permission System
- User confirmation for risky operations
- Granular permission controls
- Audit logging of operations

#### Data Privacy
- No telemetry by default
- No automatic data collection
- Local-first architecture
- User-controlled configuration

---

## 📨 Reporting a Vulnerability

### Preferred Channel

**GitHub Security Advisories**: Use private vulnerability reporting for this repository.

### What to Include

- **Description**: Clear description of the vulnerability
- **Affected Version**: Specific version, commit, or environment
- **Reproduction**: Steps to reproduce the issue
- **Impact**: Assessment of potential impact
- **Remediation**: Suggested fix if available

### Important

- **DO NOT** open a public issue for unpatched vulnerabilities
- **DO** report privately via GitHub Security Advisories
- **DO** provide as much detail as possible

---

## ⏱️ Response Process

### Timeline Goals

- **Initial Response**: Within 7 days
- **Validation**: Acknowledgment after reproducing issue
- **Disclosure**: After fix is available

### Process

1. **Triage**: Security team reviews report
2. **Validation**: Reproduce and assess severity
3. **Fix Development**: Develop and test fix
4. **Release**: Coordinate disclosure and patch
5. **Announcement**: Public disclosure after fix

---

## 🎯 Scope

### In Scope

- OpenClaude source code in this repository
- Official release artifacts
- `@gitlawb/openclaude` npm package
- Build scripts and configuration

### Out of Scope

- Third-party model providers/endpoints
- Local misconfigurations
- Unofficial forks/mirrors
- User-installed plugins/extensions

---

## 🔒 Security Considerations

### For Users

#### Environment Variables
- Never commit API keys
- Use environment variables for secrets
- Rotate keys regularly
- Use `.env` files (not committed)

#### Permissions
- Review permissions before approving
- Use sandbox mode for untrusted code
- Restrict file/network access appropriately
- Understand what each tool does

#### Network Security
- Be cautious with web tools
- Verify URLs before fetching
- Don't expose local services publicly
- Use VPN for sensitive operations

### For Contributors

#### Code Security

**Never Commit:**
- API keys or tokens
- Passwords or secrets
- Private keys or certificates
- Personal information

**Always Validate:**
- User inputs
- File paths
- URLs and domains
- Command arguments

**Use Sandboxing:**
- For file operations
- For command execution
- For network requests
- For external processes

---

## 🛡️ Vulnerability Types

### Critical Severity

- Remote code execution
- Arbitrary file access
- Credential exposure
- Privilege escalation

**Response Time**: 24-48 hours

### High Severity

- Authentication bypass
- Data exfiltration
- Denial of service
- Permission bypass

**Response Time**: 48-72 hours

### Medium Severity

- Information disclosure
- Input validation issues
- Insecure configurations
- Cross-site scripting (if applicable)

**Response Time**: 1-2 weeks

### Low Severity

- Minor information leaks
- UI/UX security issues
- Best practice violations
- Documentation gaps

**Response Time**: 2-4 weeks

---

## 📢 Disclosure Policy

### Coordinated Disclosure

1. **Fix Development**: Private fix development
2. **Testing**: Security testing of fix
3. **Release**: Patch release preparation
4. **Advisory**: GitHub Security Advisory published
5. **CVE**: CVE requested if applicable
6. **Public Disclosure**: 7 days after patch release

### CVE Process

- Valid reports may receive CVE
- Coordinated through GitHub Security
- Not guaranteed for every report
- Severity-based decision

---

## 📚 Security Best Practices

### For Developers

1. **Keep Updated**: Use latest versions
2. **Review Code**: Audit third-party dependencies
3. **Test Security**: Include security tests
4. **Limit Access**: Principle of least privilege
5. **Monitor**: Log and review operations

### For Users

1. **Verify Source**: Only use official releases
2. **Secure Keys**: Protect API credentials
3. **Review Permissions**: Understand what tools do
4. **Report Issues**: Report security concerns promptly
5. **Stay Updated**: Update regularly

---

## 📞 Contact

### Security Team

- **Primary**: GitHub Security Advisories
- **Response Time**: See severity levels above

### Other Security Resources

- **Documentation**: See security documentation
- **Issues**: [GitHub Issues](https://github.com/yourusername/openclaude/issues)
- **Discussions**: [GitHub Discussions](https://github.com/yourusername/openclaude/discussions)

---

## 📜 Legal

By reporting a security vulnerability, you agree to:

- Not exploit the vulnerability
- Keep details confidential until disclosure
- Follow responsible disclosure practices
- Allow time for fix before public disclosure

---

## 🔄 Updates

This security policy may be updated periodically. Check this file for the latest version.

---

**Last Updated**: April 2026  
**Policy Version**: 1.0  
**Maintainer**: OpenClaude Team
