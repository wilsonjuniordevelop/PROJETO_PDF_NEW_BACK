redis-server &

# Inicie o worker do Celery
celery -A src.Interface.Api.celery_worker.celery worker --loglevel=info &

# Inicie o aplicativo Python
python3 -m src.Interface.Api.api