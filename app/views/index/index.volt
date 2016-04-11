{{ assets.outputCss() }}
{{ assets.outputJs() }}

<?php $this->partial("shared/headers/header"); ?>

<div id="sub-header" class="col-md-12">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h2 id="menu-section" class="sub-head-text">{{ indexHeader }} - {{ momsName }}</h2>
    </div>
    <div class="col-md-2"></div>
</div>

<div id="body-container" class="col-md-12">
    <div class="col-md-2" style=""></div>
    <div id="body-content" class="col-md-8">
        {% set meal_x = 0 %}
        {% set category_x = 0 %}
        {% for meal in meals %}
            {% if meal.meal_type == "category" %}
                {% if category_x > 0 %}
                    </div>
                {% endif %}
                <div id="menu-cat" class="menu-cat clearfix">
                    <div id="menu-section" class="menu-section">
                        <h2>{{ meal.meal_name }}</h2>
                    </div>
                {% set category_x += 1 %}
            {% endif %}

            {% if meal.meal_type == "meal" %}
                {% if meal_x % 2 == 0 %}
                    {% set meal_slot = "first" %}
                {% else  %}
                    {% set meal_slot = "first" %}
                {% endif %}

                    <div class="col-md-6 clearfix {{ meal_slot }}" data-toggle="modal" data-target="#modal-{{ meal_x }}">
                        <h3>{{ meal.meal_name }}</h3>
                        <span id="price">{{ meal.meal_price }}</span>
                        <p>{{ meal.meal_description }}</p>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="modal-{{ meal_x }}" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">{{ meal.meal_name }}</h4>
                                    <p class="meal-description">{{ meal.meal_description }}</p>
                                </div>
                                <div class="modal-body">

                                    {#{% for meal_param in meal.meal_params %}
                                        {{ dump(meal.meal_params) }}
                                    {% endfor %}#}


                                    <?php echo Helper::getModal($meal->meal_id) ?>

                                    <b>Special Requests:</b><br />
                                    <textarea rows="5" style="width: 100%"></textarea>
                                </div>
                                <div class="modal-footer">
                                    <div id="meal-qty" class="col-md-4">
                                        <button type="button" class="btn btn-info" data-dismiss="modal">-</button>
                                        <input type="text" size="1" value="1" class="qty">
                                        <button type="button" class="btn btn-info" data-dismiss="modal">+</button>
                                    </div>
                                    <div id="meal-total" class="col-md-4">
                                        <p>${{ meal.meal_price }}</p>
                                    </div>
                                    <div id="meal-add" class="col-md-4">
                                        <button type="button" class="btn btn-info" data-dismiss="modal">Add to Cart</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                 <!-- End Modal -->

                {% set meal_x += 1 %}
            {% endif %}
        {% endfor %}

                </div>

        <div id="footer-container">
            <p>{{ restaurant.restaurant_name }} &copy; <?php echo date("Y"); ?><br />
                <small><a>powered by MyCompany</a></small></p>
        </div>

    </div>
    <div class="col-md-2"></div>
</div>




