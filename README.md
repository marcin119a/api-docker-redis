# Fast Docker Redis 🚀

Projekt wykorzystujący FastAPI, Celery, Redis i Docker do asynchronicznego tłumaczenia tekstu.

## Jak uruchomić?

Zbuduj i uruchom cały stack:

```bash
docker-compose up --build
```

## Użycie API

### Wyślij zapytanie o tłumaczenie:

```bash
curl -X POST http://localhost:8000/translate \
     -H "Content-Type: application/json" \
     -d '{"text": "Hello world"}'
```

→ Otrzymasz `{"task_id": "...", "status": "processing"}`

### Pobierz wynik:

```bash
curl http://localhost:8000/result/<task_id>
```

→ Otrzymasz np. `{"status": "done", "result": "Witaj świecie"}`

## Architektura

- **API**: FastAPI serwer (port 8000)
- **Worker**: Celery worker z modelem tłumaczenia
- **Redis**: Broker i backend dla Celery (port 6379)

## Komponenty

- `api/` - FastAPI aplikacja
- `worker/` - Celery worker z modelem Hugging Face
- `docker-compose.yml` - Konfiguracja całego stacku