test:
	@(ruff check pyas2)
	@(pytest --cov-report term --cov=pyas2 --color=yes pyas2/tests/)

serve:
	@(ENV=example python manage.py migrate && python manage.py runserver)

release:
	@(python -m build)