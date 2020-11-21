# Mihari action

This action runs [Mihari](https://github.com/ninoseki/mihari).

## Inputs

### `mihari-command`

**Required** A command for Mihari. Default `help`.

### `mihari-argument`

**Optional** An argument for Mihari.

## Outputs

### `mihari-result`

A result of the Mihari command.

## Example usage

```yaml
uses: ninoseki/mihari-action@master
with:
  mihari-command: shodan
  mihari-argument: hostname:one.one.one.one
```
