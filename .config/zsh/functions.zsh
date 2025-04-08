# Function to print a prettyfied json

function batjson() {
    prettyjson "$1" | batcat -l json
}
