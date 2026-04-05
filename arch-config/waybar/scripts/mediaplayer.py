#!/usr/bin/env python3
import subprocess
import json

def get_media_info():
    try:
        # Verifica o estado atual (Playing, Paused, Stopped)
        status_cmd = subprocess.run(['playerctl', 'status'], capture_output=True, text=True)
        status = status_cmd.stdout.strip()

        if status == "Stopped" or not status:
            return None

        # Obtém o nome do reprodutor (ex: spotify, firefox, vlc)
        player_cmd = subprocess.run(['playerctl', 'metadata', '-f', '{{playerName}}'], capture_output=True, text=True)
        player = player_cmd.stdout.strip().lower()

        # Obtém o artista e o título da música
        artist_cmd = subprocess.run(['playerctl', 'metadata', '-f', '{{artist}}'], capture_output=True, text=True)
        title_cmd = subprocess.run(['playerctl', 'metadata', '-f', '{{title}}'], capture_output=True, text=True)
        
        artist = artist_cmd.stdout.strip()
        title = title_cmd.stdout.strip()

        # Formata o texto final
        text = f"{artist} - {title}" if artist else title

        # Adiciona um pequeno ícone de estado antes do texto
        if status == "Paused":
            text = f" {text}" # Ícone de pausa 
        elif status == "Playing":
            text = f" {text}" # Ícone de play 

        # O Waybar lê estas propriedades (alt serve para o format-icons no config.jsonc)
        return {
            "text": text,
            "alt": player,
            "class": player,
            "tooltip": f"Reprodutor: {player.capitalize()}\nEstado: {status}"
        }

    except FileNotFoundError:
        # Caso o playerctl não esteja instalado
        return {"text": "Erro: playerctl em falta", "class": "error"}
    except Exception:
        return None

if __name__ == "__main__":
    info = get_media_info()
    if info:
        print(json.dumps(info), flush=True)
    else:
        # Imprime um JSON vazio para o Waybar ocultar o módulo de forma limpa
        print(json.dumps({"text": "", "class": "none"}), flush=True)
