function name_to_variable_name(_str) {
    return string_replace_all(string_lower(_str), " ", "_");
}