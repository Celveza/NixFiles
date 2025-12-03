#!/usr/bin/env bash
if [[ "$1" == "toggle" ]]; then
    if tailscale status | grep -qE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+'; then
        # Si Tailscale está activo, desactívalo
        tailscale down
    else
        # Si Tailscale no está activo, actívalo
        tailscale up
    fi
    exit 0
fi

# Verificación del estado de Tailscale
if tailscale status | grep -qE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+'; then
    # Si Tailscale está activo, muestra un candado cerrado
    echo ''
else
    # Si Tailscale no está activo, muestra un candado abierto
    echo ''
fi
