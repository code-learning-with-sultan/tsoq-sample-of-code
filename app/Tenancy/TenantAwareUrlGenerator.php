<?php

namespace App\Tenancy;

use Spatie\MediaLibrary\Support\UrlGenerator\DefaultUrlGenerator;

class TenantAwareUrlGenerator extends DefaultUrlGenerator
{
    public function getUrl(): string
    {
        $relativeMediaPath = $this->getPathRelativeToRoot();
        $appUrl = config('app.url');
        $url = $appUrl . '/storage';
        if ($tenantId = tenant()->id) {
            $url .= '/tenant' . $tenantId;
        }
        $url .= '/' . $relativeMediaPath;
        return $url;
    }
}
