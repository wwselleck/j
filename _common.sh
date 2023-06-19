if [[ -z "${JPATH}" ]]; then
    echo "ERROR: JPATH env variable not set"
    exit 1
fi

now="$(date +'%Y-%m-%d %H:%M:%S')"
