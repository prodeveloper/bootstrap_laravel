<?php

namespace {main_class}\Core;
use Laracasts\Commander\CommandTranslator as Translator;
use Laracasts\Commander\HandlerNotRegisteredException;
/**
 * Description of 
 *
 * @author jacob
 */
class CommandTranslator implements Translator {
       /**
     * Translate a command to its handler counterpart
     *
     * @param $command
     * @return mixed
     * @throws HandlerNotRegisteredException
     */
    public function toCommandHandler($command)
    {
        
        $str=  str_replace("{main_class}\Commands", "{main_class}\Handlers", get_class($command));
        $handler=str_replace('Command', 'CommandHandler', $str);

        if ( ! class_exists($handler))
        {
            $message = "Command handler [$handler] does not exist.";

            throw new HandlerNotRegisteredException($message);
        }

        return $handler;
    }

    /**
     * Translate a command to its validator counterpart
     *
     * @param $command
     * @return mixed
     */
    public function toValidator($command)
    {
        $segments = explode('\\', get_class($command));

        array_splice($segments, -1, false, 'Validators');

        return str_replace('Command', 'Validator', implode('\\', $segments));
    }


}


