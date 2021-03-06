<?php

/**
 * @package   	JCE
 * @copyright 	Copyright (c) 2009-2016 Ryan Demmer. All rights reserved.
 * @license   	GNU/GPL 2 or later - http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * JCE is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 */
defined('_JEXEC') or die('RESTRICTED');

require_once(WF_EDITOR_LIBRARIES . '/classes/manager.php');

class WFFileBrowserPlugin extends WFMediaManager {
    /*
     * @var string
     */
    protected $_filetypes = 'doc,docx,ppt,pptx,xls,xlsx,gif,jpeg,jpg,png,pdf,zip,tar,gz,swf,rar,mov,mp4,qt,wmv,asx,asf,avi,wav,mp3,aiff,odt,odg,odp,ods,odf,rtf,txt,csv';

    public function __construct($config = array()) {
        $config = array(
          'layout' => 'browser',
          'can_edit_images' => 1,
          'show_view_mode' => 1
        );

        parent::__construct($config);

        // get the plugin that opened the file browser
        $caller     = JRequest::getWord('caller', 'browser');
        $filter     = JRequest::getVar('filter', 'files');

        // clean filter value
        $filter     = (string) preg_replace('/[^\w_,]/i', '', $filter);

        if ($filter == 'images') {
            $filetypes = 'jpg,jpeg,png,gif';
        } else if ($filter === 'media') {
            $filetypes = 'avi,wmv,wm,asf,asx,wmx,wvx,mov,qt,mpg,mpeg,m4a,swf,dcr,rm,ra,ram,divx,mp4,ogv,ogg,webm,flv,f4v,mp3,ogg,wav,xap';
        } else if ($filter === 'html') {
            $filetypes = 'html,htm,txt';
        } else {
            if (strpos($filter, ',') !== false) {
                $filetypes = $filter;
            } else {
                $filetypes = $this->get('_filetypes');
            }
        }

        // get filetypes from params
        $filetypes = $this->getParam($caller.'.extensions', $filetypes);

        // set filetypes
        $this->setFileTypes($filetypes);
    }

    /**
     * Display the plugin
     * @access public
     */
    public function display() {
        parent::display();

        $document = WFDocument::getInstance();

        if ($document->get('standalone') == 1) {
          if (JRequest::getCmd('dialog', 'browser') === "browser") {
              $document->addScript(array('window.min'), 'plugins');

              $element = JRequest::getCmd('element', JRequest::getCmd('fieldid', ''));

              $settings = array(
                'site_url'  => JURI::base(true) . '/',
                'language'  => WFLanguage::getCode(),
                'element'   => $element,
                'token'     => WFToken::getToken()
              );

              $document->addScriptDeclaration('tinymce.settings=' . json_encode($settings) . ';');
          }

          $document->addScript(array('popup.min'), 'plugins');
          $document->addStyleSheet(array('browser.min'), 'plugins');
        }

        if (JRequest::getCmd('dialog', 'browser') === "browser") {
            $document->addScript(array('browser'), 'plugins');
        }
    }
}
