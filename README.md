# Python Template

Keywords: python, devcontainer, uv, vscode, ruff, docker, python package, github, github ci, lefthook (precommit), mypy, pytest, renovate.

Шаблон предназначен для python проектов в IDE vscode.
Из него легко можно начать разрабатывать как библиотеки или cli утилиты, так и начинать работу с django или fastapi.
Возможно у меня на github уже есть пару проектов основанных на данном шаблоне.

## Установка

1. Сделайте git clone репозитория и удалите папку .git.

2. Через поиск замените все упоминания python-template (и возможно python_template) на имя вашего проекта.

3. Откройте проект в vscode и в терминале инициализируйте git повторно для вашего проекта:

```bash
git init
git checkout -b main
git add .
git commit -m "Initial commit"
# Тут команды для push в remote, допустим в github
```

5. Установите docker: https://www.docker.com/products/docker-desktop/. Установите рекомендуемое расширение: devcontainers.

6. Откройте проект в devcontainer: command palette (ctrl shift p) -> reopen in devcontainer.

7. Начинайте разработку. Можете менять уже существующие настройки, но я постарался сделать их максимально стандартными и рабочими для всех.

Если вы изменили настройки devcontainer не забудьте запустить rebuild devcontainer.

## Базовый функционал разработки

Рекомендую просто открыть файлы и почитать комменты.

1. .vscode имеет множество настроек: run tasks в command palette (ctrl shift p), debug (f5).

2. lefthook можете расценивать как асинхронный pre-commit. Там много проверок, но можете смело отключать.

3. ruff должен быть вам знаком так же как и uv (если нет почитайте).

4. pylance для анализа в ide. При ci или precommit будет запускаться mypy для анализа типов.

5. Изменили настройки линтера или форматера? Обязательно запустите: run task -> Run pre-commit for all files.

## CI

Для библиотек уберите build docker, и наоборот. Если библиотека не пойдет на pypi используйте [tool.uv.sources].

1. Проверьте .github. Там есть workflows для докера или библиотек. При build используется docker, прочитайте dockerfile.

2. Для обновлений зависимостей используйте renovate. Я рекомендую поставить его как github app (mend io). Но можно и как ci.

3. Я не стал включать сканы на secrets, уязвимости.

4. Запуск build on new git tags.
