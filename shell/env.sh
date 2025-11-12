# helpers to easily load .env files

# Load environment variables from string
function envs() {
    local line
    for line in "$@"; do
        line=$(echo "$line" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
        if [ -z "$line" ] || [[ "$line" =~ ^# ]]; then
            continue
        fi
        if [[ "$line" =~ ^export[[:space:]]+ ]]; then
            line=$(echo "$line" | sed 's/^export[[:space:]]*//')
        fi
        local name=$(echo "$line" | cut -d= -f1 | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
        local value=$(echo "$line" | cut -d= -f2- | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
        if [[ "$value" =~ ^\".*\"$ ]] || [[ "$value" =~ ^\'.*\'$ ]]; then
            value=$(echo "$value" | sed 's/^["'\'']//;s/["'\'']$//')
        fi
        local sub1
        if [[ "$value" =~ \$\{[A-Za-z_][A-Za-z_0-9]*\} ]]; then
            sub1=$(echo "$value" | sed 's/\${\([A-Za-z_][A-Za-z_0-9]*\)}/\$\1/g')
        else
            sub1="$value"
        fi
        local sub2
        if [[ "$sub1" =~ \$[A-Za-z_][A-Za-z_0-9]* ]]; then
            sub2=$(eval "echo $value")
        else
            sub2="$value"
        fi
        export "$name"="$sub2"
    done
}

# Load environment variables from file
function load-env() {
    envs $(cat "$1")
}

# Load environment variables from clipboard
function pbenv() {
    envs $(pbpaste)
}
