cpplint --quiet --recursive --exclude="src/rapidxml-1.13" --filter=-whitespace/newline,-whitespace/line_length,-readability/braces,-legal/copyright,-build/namespaces,-readability/casting src/
# TODO: remove readability/casting from the filter. It was temporarily added
# because the changes required would need testing unfitting of the original
# style check update commit.

source ./generators/venv/bin/activate

# Lint Python Files
flake8 --ignore=E501,E266,W503 "${FILES[@]}"

# Type Check Python Files
mypy --strict "${FILES[@]}"