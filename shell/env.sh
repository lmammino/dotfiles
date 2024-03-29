# helpers to easily load .env files

function envs -d "Load environment variables from string"
    for line in $argv
        set line (string trim $line)
        if test -z $line
        or string match -q "#*" $line
            continue
        end
        if string match -q "export *" $line
            set line (string sub -s 7 $line)
        end
        set name_value (string split -m 1 = $line)
        set name (string trim $name_value[1])
        set value (string trim $name_value[2])
        #echo "[line=$line,name_value=$name_value,name=$name,value=$value]"
        if string match -q '"*"' $value
        or string match -q "'*'" $value
            set value (string sub -s 2 -e -1 $value)
        end
        if string match -qr '[$][{][A-Za-z_][A-Za-z_0-9]*[}]' $sub1
            set sub1 (string replace '[$][{]([A-Za-z_][A-Za-z_0-9]*)[}]' '$$$1' $sub1)
        else
            set sub1 $value
        end
        if string match -qr '[$][A-Za-z_][A-Za-z_0-9]*' $sub1
            set sub2 (eval "echo $value")
        else
            set sub2 $value
        end
        #echo "[name=$name,value=$value,sub1=$sub1,sub2=$sub2]"
        set -gx $name $sub2
    end
end

function load-env -d "Load environment variables from file"
    envs (cat $argv[1])
end

function pbenv -d "Load environment variables from clipboard"
    envs (pbpaste)
end
