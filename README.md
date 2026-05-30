# Python Template

Keywords: python, uv, vscode, ruff, dprint, docker, python package, github, github ci, lefthook (precommit), mypy, pytest, renovate.

Шаблон предназначен для python проектов в IDE vscode.
Из него легко можно начать разрабатывать как библиотеки или cli утилиты, так и начинать работу с django или fastapi.
Возможно у меня на github уже есть пару проектов основанных на данном шаблоне.

## Установка

1. Установите copier:

```bash
pipx install copier
```

2. Сделайте копию на основе шаблона:

Да вы можете просто сделать git clone и не использовать copier. Он нужен только для синхронизации с шаблоном, что удобно лично для меня.

```bash
copier copy https://github.com/GuFFy12/python-template.git <project-name>
```

3. Начинайте разработку. Можете менять уже существующие настройки, но я постарался сделать их максимально стандартными и рабочими для всех.

## Базовый функционал разработки

Рекомендую просто открыть файлы и почитать комменты.

1. .vscode имеет множество настроек: run tasks в command pallete (ctrl shift p), debug (f5).

2. lefthook можете расценивать как асинхронный pre-commit. Там много проверок, но можете смело отключать.

3. ruff должен быть вам знаком так же как и uv (если нет почитайте). dprint же это rust аналог prettier для множества файлов.

4. pylance для анализа в ide. При ci или precommit будет запускаться mypy для анализа типов.

5. Изменили настройки линтера или форматера? Обязательно запустите: run task -> Run pre-commit for all files.

6. Для dprint есть и другие плагины: поддержка js, ts, html. Обновите его если это необходимо.

## CI

Для библиотек уберите build docker, и наоборот. Если библиотека не пойдет на pypi используйте [tool.uv.sources].

1. Проверьте .github. Там есть workflows для докера или библиотек. При build используется docker, прочитайте dockerfile.

2. Для обновлений зависимостей используйте renovate. Я рекомендую поставить его как github app (mend io). Но можно и как ci.

3. Я не стал включать сканы на secrets, уязвимости.

4. Запуск build on new git tags.
