function script-dir()
{
    echo "$( cd "$( dirname "${BASH_SOURCE[1]}" )" && pwd )"
}
