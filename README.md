# Mihari action

This action runs [Mihari](https://github.com/ninoseki/mihari).

## Inputs

### `command`

**Required** A command for Mihari. Default `help`.

### `input`

**Optional** An input for a Mihari command.

### `options`

**Optional** Options for a Mihari command.

## Outputs

### `result`

A result of a Mihari command.

## Example usage

```yaml
uses: ninoseki/mihari-action@main
with:
  command: 'shodan'
  input: 'hostname:one.one.one.one'
  options: '--tags test'
```
