{{ content() }}

<div class="well well-small">
	<h4>Редактирование Матча</h4>
	<p>Измените необходимые поля и примените изменения кнопкой Редактировать.</p>
</div>

{{ form('match/edit', 'method': 'POST', 'class': 'form-horizontal') }}
	<input type="hidden" name="curr_match_id" value="{{ curr_match_id }}" />

    <fieldset>
    <legend>Редактирование матча</legend>

		{% for element in form.getElements() %}
		<div class="form-group">
			{{ form.label( element.getName(), ['class': 'col-lg-2 control-label'] ) }}
			<div class="col-lg-10">
				{{ form.render( element.getName() ) }}
			</div>
		</div>
		{% endfor %}

        <div class="form-group">
        	<div class="col-lg-10 col-lg-offset-2">
            	{{ submit_button('Редактировать', 'class': 'btn btn-primary') }}
            </div>
        </div>

    </fieldset>
</form>