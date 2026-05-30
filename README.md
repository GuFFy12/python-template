# Python Template

Keywords: python, uv, devcontaier, vscode, ruff, dprint, docker, python package, github, github ci, git lfs, pre commit, mypy, pytest, renovate.

Шаблон предназначен для python проектов с uv в IDE vscode используя dev containers.
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

3. Откройте проект в vscode и в терминале инициализируйте git:

```bash
git init
git checkout -b main
git add .
git commit -m "Initial commit"
# Тут команды для push в remote, допустим в github
```

4. После push в удаленный репозиторий УДАЛИТЕ ЛОКАЛЬНУЮ ПАПКУ.

5. Установите docker для windows, linux. Для macos рекомендую orbstack.

6. В vscode поставьте расширение dev containers, откройте панель команд, clone repository in container volume.

Обьяснение для шагов 4 и 5: при разработке будет использоваться среда разработки внутри docker контейнера.
Формально vscode и расширение devcontainer пробрасывают remote server в контейнер.
НО: если мы будем монтировать папку с кодом из контейнера в хост машину, то на некоторых ОС (windows, mac os) могут возникнуть проблемы с производительностью.
Используя docker volumes, код будет располагаться в linux нативном хранилище. Следовательно открыть код в проводнике ВЫ НЕ СМОЖЕТЕ.
Минусы вроде явные, но мне такой подход по душе, особенно когда появятся внешние зависимости по типу БД и тп.

7. Начинайте разработку. Можете менять уже существующие настройки, но я постарался сделать их максимально стандартными и рабочими для всех.

8. Для обновления шаблона используйте соответствующую команду из command pallet -> run task.

9. При изменениях в .devcontainer: command pallet -> rebuild container.

## Базовый функционал разработки

Рекомендую просто открыть файлы и почитать комменты.

1. .vscode имеет множество настроек: run tasks в command pallet (ctrl shift p), debug (f5).

2. devcontainer ставит расширения для vscode, lfs, uv, запускает post create.

3. lefthook можете расценивать как асинхронный pre-commit. Там много проверок, но можете смело отключать.

4. ruff должен быть вам знаком так же как и uv (если нет почитайте). dprint же это rust аналог prettier для множества файлов.

5. pyright для анализа в ide. При ci или precommit будет запускаться mypy для анализа типов.

6. Если обновили какие либо базовые настройки или сделали git pull: run task -> Run post-create script.
   Изменили настройки линтера или форматера? Обязательно запустите: run task -> Run pre-commit for all files.

7. Для dprint есть и другие плагины: поддержка js, ts, html. Обновите его если это необходимо.

## CI

Для библиотек уберите build docker, и наоборот. Если библиотека не пойдет на pypi используйте [tool.uv.sources].

1. Проверьте .github. Там есть workflows для докера или библиотек. При build используется docker, прочитайте dockerfile.

2. Для обновлений зависимостей используйте renovate. Я рекомендую поставить его как github app (mend io). Но можно и как ci.

3. Я не стал включать сканы на secrets, уязвимости.

4. Запуск build on new git tags.
