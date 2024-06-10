<?php

declare(strict_types=1);

namespace App\Tests;

use App\ExampleClass;
use PHPUnit\Framework\TestCase;

class ExampleClassTest extends TestCase
{
    public function testExample(): void
    {
        $exampleClass = new ExampleClass();
        self::assertEquals('Hello World', $exampleClass->exampleMethod());
    }
}
