#!/usr/bin/env bash
# one-shot installer + first run for oobabooga/text-generation-webui on RunPod

set -e

REPO_URL="https://github.com/oobabooga/text-generation-webui"
REPO_DIR="/workspace/text-generation-webui"

LISTEN_HOST="0.0.0.0"
LISTEN_PORT="7860"

echo
echo "==================================="
echo "  TEXT-GEN WEBUI • RUNPOD SETUP    "
echo "==================================="
echo

# ---------------- STEP 1: OPTIONAL LOGIN ----------------
AUTH_ARG=""
read -r -p "Enable basic auth (username:password) for the UI? [y/N] " reply
if [[ "$reply" =~ ^[Yy]$ ]]; then
  read -r -p "Username: " AUTH_USER
  read -rs -p "Password: " AUTH_PASS; echo
  AUTH_ARG="--gradio-auth ${AUTH_USER}:${AUTH_PASS}"
  echo "[+] Auth: ON"
else
  echo "[i] Auth: OFF (open UI)"
fi
echo

# ---------------- STEP 2: CLEAN + CLONE ----------------
if [[ -d "$REPO_DIR" ]]; then
  echo "[i] Existing install found at $REPO_DIR"
  echo "[i] Removing it so we start fresh..."
  rm -rf "$REPO_DIR"
fi

echo "[+] Cloning repo..."
git clone "$REPO_URL" "$REPO_DIR"
cd "$REPO_DIR"

echo
echo "[+] Repo cloned and ready."
echo

# ---------------- STEP 3: FIRST RUN / AUTO-INSTALL ----------------
echo "[+] Running first-time setup + launch..."
# start_linux.sh shows a menu; piping "A" selects the auto-install / default path
printf '%s\n' "A" | ./start_linux.sh \
  --listen \
  --listen-host "$LISTEN_HOST" \
  --listen-port "$LISTEN_PORT" \
  $AUTH_ARG