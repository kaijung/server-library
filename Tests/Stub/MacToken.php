<?php

declare(strict_types=1);

/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2014-2017 Spomky-Labs
 *
 * This software may be modified and distributed under the terms
 * of the MIT license.  See the LICENSE file for details.
 */

namespace OAuth2Framework\Component\Server\Tests\Stub;

use OAuth2Framework\Component\Server\TokenType\MacToken as Base;

final class MacToken extends Base
{
    /**
     * {@inheritdoc}
     */
    protected function generateMacKey(): string
    {
        return bin2hex(random_bytes(50));
    }
}
