%% {{module}}.hrl generated by Nifty

%%% defines
{% with type_keys=types|fetch_keys %}{% for type in type_keys %}{% with kind=types|fetch:type|getNth:1 %}{% if kind=="struct" %}
-record('{{type}}', {
	{% with fields=types|fetch:type|getNth:2 %}{% for _, name, t, __ in fields %}'{{name}}'{% if not forloop.last %},{% endif %}{% endfor %}{% endwith %}
	}).
{% endif %}{% endwith%}{% endfor %}{% endwith %}
