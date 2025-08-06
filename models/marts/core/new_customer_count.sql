--Define which types of customers we will be counting using jinja.
{% set customer_types = ['returning', 'new']%}


with customers as (
    select * from {{ ref('dim_customers') }}
),

customer_type_pivot as (
    select

{% for customer_type in customer_types %}
    sum(case when customer_type = '{{ customer_type }}' then 1 end) as {{ customer_type }}_count
    {% if not loop.last %}
        ,
    {% endif %}
{% endfor %}
    from customers

)



select * from customer_type_pivot

#}
