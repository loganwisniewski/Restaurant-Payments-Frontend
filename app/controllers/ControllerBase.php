<?php

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{
    public function initialize()
    {
        $this->assets
            ->addJs('js/include/jquery.js')
            ->addJs('js/include/jquery-ui.js')
            ->addJs('http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js', false, false)
            ->addJs('js/include/sticky.js')
            ->addJs('js/javascript.js')
            ->addCss('https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css', false, false)
            ->addCss('css/jquery-ui.css')
            ->addCss('css/jquery-ui.structure.css')
            ->addCss('css/jquery-ui.theme.css')
            ->addCss('css/custom.css');
    }
}
