# Gradio + Whisper Tiny + Celery + Redis 🚀

Projekt wykorzystujacy Gradio, Celery, Redis i Docker do asynchronicznej transkrypcji audio (Whisper Tiny).

## Jak uruchomić?

Zbuduj i uruchom cały stack:

```bash
docker-compose up --build
```

## Uzycie aplikacji

Po uruchomieniu otworz:

```bash
http://localhost:7860
```

W UI Gradio:
- wrzuc plik audio,
- kliknij submit,
- odbierz transkrypcje wygenerowana przez model `openai/whisper-tiny`.

## Architektura

- **UI**: Gradio serwer (port 7860)
- **Worker**: Celery worker z modelem `openai/whisper-tiny`
- **Redis**: Broker i backend dla Celery (port 6379)

## Komponenty

- `api/` - aplikacja Gradio
- `worker/` - Celery worker z modelem Whisper Tiny
- `docker-compose.yml` - Konfiguracja całego stacku