# Ligo-compile helper script

# Requirements

- fish shell
- Docker with ligolang/ligo:next

Uses `fish` to help compiling smart-contracts.

_Usage:_ `. compiler.fish {contract_name}.ligo {owner_address}`

It will create a compiled version of contract and compile storage setting the owner with {owner_address}. As result, two files produced: {contract_name}.tz, {contract_name}.storage
