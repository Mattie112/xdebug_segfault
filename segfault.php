<?php
$input[] = 1;

segfault($input);

function segfault($input)
{
    foreach ($input as $i => $foo) {
        segfault(array_slice($input, $i));
    }
}
