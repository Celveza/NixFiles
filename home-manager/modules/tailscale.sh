#!/usr/bin/env bash
if tailscale status | grep -qE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+'; then
    # Si Tailscale está activo (hay direcciones IP en la salida), muestra un candado cerrado
    echo ''
else
    # Si Tailscale no está activo, muestra un candado abierto
    echo ''
fi

# Si se hace clic en el ícono, activa o desactiva Tailscale
if [[ "${BLOCK_BUTTON}" -eq 1 ]]; then
    if tailscale status | grep -qE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+'; then
        # Si Tailscale está activo, desactívalo
        sudo tailscale down
    else
        # Si Tailscale no está activo, actívalo
        sudo tailscale up
    fi
fi
