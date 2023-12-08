{% for p in site.data.ig.definition.resource %}
  {%- if p.isExample -%}
      {% assign type = p.reference.reference | split: '/' | first %}
      {% unless type == "CodeSystem" or type == "ValueSet" %}
          {% if types %}
            {% assign types =  types | append: "," | append: type %}
          {% else %}
            {% assign types = type %}
          {% endif %}
      {% endunless %}
  {% endif %}
{% endfor %}

{% assign my_array = types | split: "," %}
{% assign my_array = my_array | sort | uniq %}

{% for i in my_array %}
### {{ i }}
  {%- for p in site.data.ig.definition.resource -%}
      {%- if p.isExample -%}
        {%- assign type =  p.reference.reference | split: '/' | first -%}
            {%- if type == i %}
- [{{p.name}}]({{p.reference.reference | replace: '/','-'}}.html)
            {%- endif -%}
       {%- endif -%}
   {%- endfor %}
{% endfor %}