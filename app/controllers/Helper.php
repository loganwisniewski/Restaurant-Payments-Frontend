<?php

use Phalcon\Tag;

class Helper extends Tag
{
    /**
     * Generates a widget to show a HTML5 audio tag
     *
     * @param array
     * @return string
     */
    static public function getModal($meal_id)
    {
        $code = "";

        foreach (MealParam::find("meal_id = $meal_id") as $meal_param) {
            $param = $meal_param->Param;
            $code .= "<b>" . $param->param_title . "</b>, " . $param->param_type . "<br />";

            foreach (ParamOption::find("param_id = $param->param_id") as $param_option) {
                $code .= $param_option->param_option_name . "<br />";
            }
        }

        return $code;
    }
}
