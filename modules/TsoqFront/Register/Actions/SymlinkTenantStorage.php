<?php

namespace Modules\TsoqFront\Register\Actions;

use Illuminate\Filesystem\Filesystem;
use Illuminate\Support\Facades\Storage;

trait SymlinkTenantStorage {

    public function symlinkTenantStorage($tenantId){

        /**
         * Tenant storage path
         * Tenant storage path symlinked in public
         */
        $tenantStoragePath = base_path("storage/tenant$tenantId/app/public");
        $tenantPublicPath = public_path("storage/tenant$tenantId");

        $filesystem = new Filesystem();

        /**
         * Check if storage folder already exists for this tenant
         * If not, then create the corresponsing storage path
         */
        if (!$filesystem->exists($tenantStoragePath)) {
            mkdir(base_path("storage/tenant$tenantId"));
            mkdir(base_path("storage/tenant$tenantId/app"));
            mkdir(base_path("storage/tenant$tenantId/app/public"));
        }

        // Create symlink for tenant's public storage
        if (!$filesystem->exists($tenantPublicPath)) {
            $filesystem->link($tenantStoragePath, $tenantPublicPath);
        }
    }

}
