# Flake Templates

My Nix flake templates. Currently have multiple templates available

* Rust
* Python
* Julia

## Usage
To show the available templates:
```{bash}
nix flake show -t github:chrhjoh/flake-templates
```

To apply a template (Here rust):
```{bash}
nix flake init -t github:chrhjoh/flake-templates#rust
```
