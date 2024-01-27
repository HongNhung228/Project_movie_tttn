<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Combo;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $combo = new Combo;
        $combo->name = 'Combo See Mê - Cầu Vồng';
        $combo->description = 'GIÁ SỐC, Chỉ 139K sở hữu ngay: 1 Bắp (69oz) + 1 Cốc Cầu vồng kèm nước có gaz';
        $combo->image_path = 'https://files.betacorp.vn/files/media/combopackage/2023/07/27/combo-see-me-08-083746-270723-92.png';
        $combo->price = 139;
        $combo->save();

        $combo = new Combo;
        $combo->name = 'Sweet Combo 69oz';
        $combo->description = 'TIẾT KIỆM 46K!!! Gồm: 1 Bắp (69oz) + 2 Nước có gaz (22oz)';
        $combo->image_path = 'https://files.betacorp.vn/files/media/images/2023/06/15/sweet-combo-154545-150623-48.png';
        $combo->price = 69;
        $combo->save();

        $combo = new Combo;
        $combo->name = 'Beta Combo 69oz';
        $combo->description = 'TIẾT KIỆM 28K!!! Gồm: 1 Bắp (69oz) + 1 Nước có gaz (22oz)';
        $combo->image_path = 'https://files.betacorp.vn/files/media/images/2023/06/15/beta-combo-154428-150623-83.png';
        $combo->price = 89;
        $combo->save();

        $combo = new Combo;
        $combo->name = 'Combo See Mê - Phi Hành Gia';
        $combo->description = 'TIẾT KIỆM 38K!!! Sỡ hữu ngay: 1 Ly Phi Hành Gia kèm nước + 1 Bắp (69oz)';
        $combo->image_path = 'https://files.betacorp.vn/files/media/images/2023/06/15/combo-see-me-130x130px-12-151911-150623-82.png';
        $combo->price = 59;
        $combo->save();

        $combo = new Combo;
        $combo->name = 'Combo See Mê - Gấu Qee';
        $combo->description = 'TIẾT KIỆM 38K!!! Sỡ hữu ngay: 1 Ly Gấu Qee kèm nước + 1 Bắp (69oz)';
        $combo->image_path = 'https://files.betacorp.vn/files/media/combopackage/2024/01/17/combo-online-13-092610-170124-16.png';
        $combo->price = 109;
        $combo->save();
    }
}
