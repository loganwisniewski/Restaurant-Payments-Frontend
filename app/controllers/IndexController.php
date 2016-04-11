<?php

class IndexController extends ControllerBase
{

    public function indexAction($restaurant_id)
    {
        $restaurant = Restaurant::findFirst($restaurant_id);
        $this->view->restaurant = $restaurant;
        $menu = Menu::findFirst($restaurant->menu_id);
        $this->view->menu = $menu;
        $meals = Meal::find(array(
            "conditions" => "menu_id = $menu->menu_id AND meal_order IS NOT NULL",
            "order" => "meal_order"
        ));


//        foreach($meals as $meal){
//            $meal->meal_name = "GONE";
//
//        }
//
        $this->view->meals = $meals;


        $website_id = $restaurant->website_id;
        foreach(WebsiteMeta::findBywebsite_id($website_id) as $meta){
            $key = $meta->website_meta_key;
            $value = $meta->website_meta_value;
            $this->view->$key = $value;
        }
    }

}

