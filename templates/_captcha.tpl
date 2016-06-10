{#
    Recaptcha template
    Author:
        * for the script: the reCAPTCHA team of Google
        * for the modifications: François Cardinaux, CH 1207 Geneva (http://bit.ly/qTaona)
#}
{% if m.recaptcha.is_enabled %}

    {% with m.recaptcha.public_key as public_key %}
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>

        <form action="?" method="POST">
            <div class="g-recaptcha" data-sitekey="{{ public_key|urlencode }}"></div>
        </form>

    {% endwith %}

{% endif %}

