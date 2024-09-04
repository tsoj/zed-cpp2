;-----------  C++  -----------;

(field_identifier) @property

(call_expression
  function: (qualified_identifier
    name: (identifier) @function))

(call_expression
  function: (identifier) @function)

(call_expression
  function: (field_expression
    field: (field_identifier) @function))

(preproc_function_def
  name: (identifier) @function.special)

(template_function
  name: (identifier) @function)

(template_method
  name: (field_identifier) @function)

(function_declarator
  declarator: (identifier) @function)

(function_declarator
  declarator: (qualified_identifier
    name: (identifier) @function))

(function_declarator
  declarator: (field_identifier) @function)

(operator_name
  (identifier)? @operator) @function

(destructor_name (identifier) @function)

((namespace_identifier) @type
 (#match? @type "^[A-Z]"))

(auto) @type
(type_identifier) @type

(statement_identifier) @label
(this) @variable.special
("static_assert") @function.builtin

[
  "alignas"
  "alignof"
  "break"
  "case"
  "catch"
  "class"
  "co_await"
  "co_return"
  "co_yield"
  "concept"
  "constexpr"
  "continue"
  "decltype"
  "default"
  "delete"
  "do"
  "else"
  "enum"
  "explicit"
  "extern"
  "final"
  "for"
  "friend"
  "if"
  "inline"
  "namespace"
  "new"
  "noexcept"
  "override"
  "private"
  "protected"
  "public"
  "requires"
  "return"
  "sizeof"
  "struct"
  "switch"
  "template"
  "throw"
  "try"
  "typedef"
  "typename"
  "union"
  "using"
  "while"
  (primitive_type)
  (sized_type_specifier)
  (storage_class_specifier)
  (type_qualifier)
  (virtual)
] @keyword

[
  "#define"
  "#elif"
  "#else"
  "#endif"
  "#if"
  "#ifdef"
  "#ifndef"
  "#include"
  (preproc_directive)
] @keyword

(comment) @comment

[
  (true)
  (false)
  (null)
  ("nullptr")
] @constant

(number_literal) @number

[
  (string_literal)
  (system_lib_string)
  (char_literal)
  (raw_string_literal)
] @string

[
  ","
  ":"
  "::"
  ";"
  (raw_string_delimiter)
] @punctuation.delimiter

[
  "{"
  "}"
  "("
  ")"
  "["
  "]"
] @punctuation.bracket

[
  "."
  ".*"
  "->*"
  "~"
  "-"
  "--"
  "-="
  "->"
  "="
  "!"
  "!="
  "|"
  "|="
  "||"
  "^"
  "^="
  "&"
  "&="
  "&&"
  "+"
  "++"
  "+="
  "*"
  "*="
  "/"
  "/="
  "%"
  "%="
  "<<"
  "<<="
  ">>"
  ">>="
  "<"
  "=="
  ">"
  "<="
  ">="
  "<=>"
  "||"
  "?"
] @operator

(conditional_expression ":" @operator)
(user_defined_literal (literal_suffix) @operator)


;-----------  Cpp2 -----------;

"++" @operator
"--" @operator
"*" @operator
"&" @operator
"&&" @operator
"~" @operator
"$" @operator
"..." @operator
"*" @operator
"/" @operator
"%" @operator
"+" @operator
"-" @operator
"<<" @operator
">>" @operator
"<=>" @operator
"<" @operator
">" @operator
"<=" @operator
">=" @operator
"==" @operator
"!=" @operator
"&" @operator
"^" @operator
"|" @operator
"&&" @operator
"||" @operator

"..<" @operator
"..=" @operator

"=" @operator
"*=" @operator
"/=" @operator
"%=" @operator
"+=" @operator
"-=" @operator
">>=" @operator
"<<=" @operator
"&=" @operator
"^=" @operator
"|=" @operator


"::" @operator


"." @delimiter
";" @delimiter


"is" @keyword
"as" @keyword

"@" @keyword

"virtual" @keyword
"override" @keyword
"final" @keyword
"implicit" @keyword

"->" @function

"template <" @punctuation.bracket
"> template" @punctuation.bracket
"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket

(cpp2_primitive_type) @keyword

(cpp2_number_literal) @number

(macro_comment) @property

(cpp2_block_declaration
    name: (cpp2_non_template_identifier) @emphasis.strong )

(cpp2_expression_declaration
    name: (cpp2_non_template_identifier) @emphasis.strong )

(cpp2_no_definition_declaration
    name: (cpp2_non_template_identifier)  @emphasis.strong)

(cpp2_function_declaration_argument
  (cpp2_any_identifier
    last: (cpp2_no_namespace_identifier
        (cpp2_non_template_identifier) @emphasis)))

(cpp2_function_declaration_argument
    (cpp2_expression_declaration
        name: (cpp2_non_template_identifier) @emphasis))

(cpp2_function_declaration_argument
    (cpp2_block_declaration
        name: (cpp2_non_template_identifier) @emphasis))

(cpp2_function_declaration_argument
    (cpp2_no_definition_declaration
        name: (cpp2_non_template_identifier) @emphasis))

(cpp2_no_definition_declaration
    type: (cpp2_expression
        (cpp2_any_identifier
            last: (cpp2_no_namespace_identifier
                (cpp2_template_identifier
                    (cpp2_non_template_identifier) @type)))))

(cpp2_no_definition_declaration
    type: (cpp2_expression
        (cpp2_any_identifier
            last: (cpp2_no_namespace_identifier) @type)))

(cpp2_left_side_of_definition
    type: (cpp2_expression
        (cpp2_any_identifier
            last: (cpp2_no_namespace_identifier
                (cpp2_template_identifier
                    (cpp2_non_template_identifier) @type)))))

(cpp2_left_side_of_definition
    type: (cpp2_expression
        (cpp2_any_identifier
            last: (cpp2_no_namespace_identifier
                (cpp2_non_template_identifier) @type))))

(cpp2_function_type
    return: (cpp2_expression
        (cpp2_any_identifier
            last: (cpp2_no_namespace_identifier
                (cpp2_template_identifier
                    (cpp2_non_template_identifier) @type)))))

(cpp2_next) @keyword

(cpp2_type_type) @keyword

(cpp2_passing_style) @keyword

(cpp2_throws) @keyword

(cpp2_inspect) @keyword

(cpp2_function_call
    function: (cpp2_expression
        (cpp2_any_identifier
            last: (cpp2_no_namespace_identifier
                (cpp2_non_template_identifier) @function))))

(cpp2_function_call
    function: (cpp2_expression
        (cpp2_any_identifier
            last: (cpp2_no_namespace_identifier
                (cpp2_template_identifier
                    (cpp2_non_template_identifier) @function)))))


(cpp2_dot_access
    field: (cpp2_any_identifier
        last: (cpp2_no_namespace_identifier) @property))
