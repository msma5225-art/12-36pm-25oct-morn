/*
  # Add Sample Devices with Image URLs

  ## Purpose
  This migration adds sample device models for phones, laptops, and iPads
  with corresponding image URLs from Unsplash for a better user experience.

  ## Devices Added
  
  ### iPhones (Apple)
  - iPhone 15 series (4 models)
  - iPhone 14 series (4 models)
  - iPhone 13 series (4 models)
  - iPhone 12 series (4 models)
  - iPhone 11 series (3 models)

  ### Samsung Phones
  - Galaxy S24 series (3 models)
  - Galaxy S23 series (3 models)
  - Galaxy Z series (4 models)
  - Galaxy A series (3 models)

  ### OnePlus Phones
  - OnePlus 12 series (2 models)
  - OnePlus 11 series (2 models)
  - OnePlus 10 series (2 models)
  - OnePlus Nord series (2 models)

  ### Other Phone Brands
  - Xiaomi (8 models)
  - Google Pixel (6 models)

  ### MacBooks (Apple)
  - MacBook Air (3 models)
  - MacBook Pro (6 models)

  ### Other Laptops
  - Dell (6 models)
  - HP (5 models)
  - Lenovo (5 models)

  ### iPads (Apple)
  - iPad Pro (4 models)
  - iPad Air (2 models)
  - iPad (2 models)
  - iPad Mini (1 model)
*/

-- Insert iPhone devices
INSERT INTO public.devices (brand_id, model_name, image_url) 
SELECT id, 'iPhone 15', 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 15 Plus', 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 15 Pro', 'https://images.unsplash.com/photo-1696446702792-da050c925b1d?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 15 Pro Max', 'https://images.unsplash.com/photo-1696446702792-da050c925b1d?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 14', 'https://images.unsplash.com/photo-1663499482523-1c0d8c469d0c?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 14 Plus', 'https://images.unsplash.com/photo-1663499482523-1c0d8c469d0c?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 14 Pro', 'https://images.unsplash.com/photo-1678652632598-39eb1b0972d5?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 14 Pro Max', 'https://images.unsplash.com/photo-1678652632598-39eb1b0972d5?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 13', 'https://images.unsplash.com/photo-1632661674596-df8be070a5c5?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 13 Mini', 'https://images.unsplash.com/photo-1632661674596-df8be070a5c5?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 13 Pro', 'https://images.unsplash.com/photo-1645378999013-95abebf5f3c1?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 13 Pro Max', 'https://images.unsplash.com/photo-1645378999013-95abebf5f3c1?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 12', 'https://images.unsplash.com/photo-1605787020600-b9ebd5df1d07?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 12 Mini', 'https://images.unsplash.com/photo-1605787020600-b9ebd5df1d07?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 12 Pro', 'https://images.unsplash.com/photo-1611472173362-3f53dbd65d80?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 12 Pro Max', 'https://images.unsplash.com/photo-1611472173362-3f53dbd65d80?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 11', 'https://images.unsplash.com/photo-1574755393849-623942496936?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 11 Pro', 'https://images.unsplash.com/photo-1580910051074-3eb694886505?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
UNION ALL SELECT id, 'iPhone 11 Pro Max', 'https://images.unsplash.com/photo-1580910051074-3eb694886505?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'phone'
ON CONFLICT DO NOTHING;

-- Insert Samsung devices
INSERT INTO public.devices (brand_id, model_name, image_url)
SELECT id, 'Galaxy S24', 'https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Samsung' AND category = 'phone'
UNION ALL SELECT id, 'Galaxy S24+', 'https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Samsung' AND category = 'phone'
UNION ALL SELECT id, 'Galaxy S24 Ultra', 'https://images.unsplash.com/photo-1673852803149-c86d52e2c7b9?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Samsung' AND category = 'phone'
UNION ALL SELECT id, 'Galaxy S23', 'https://images.unsplash.com/photo-1675596484300-d1c0916e1c1e?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Samsung' AND category = 'phone'
UNION ALL SELECT id, 'Galaxy S23+', 'https://images.unsplash.com/photo-1675596484300-d1c0916e1c1e?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Samsung' AND category = 'phone'
UNION ALL SELECT id, 'Galaxy S23 Ultra', 'https://images.unsplash.com/photo-1675596478218-13c1b6e476a4?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Samsung' AND category = 'phone'
UNION ALL SELECT id, 'Galaxy Z Fold 5', 'https://images.unsplash.com/photo-1691766616093-41e36e4c09b8?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Samsung' AND category = 'phone'
UNION ALL SELECT id, 'Galaxy Z Flip 5', 'https://images.unsplash.com/photo-1692725255812-0bdb8af2a0fc?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Samsung' AND category = 'phone'
UNION ALL SELECT id, 'Galaxy Z Fold 4', 'https://images.unsplash.com/photo-1691766616093-41e36e4c09b8?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Samsung' AND category = 'phone'
UNION ALL SELECT id, 'Galaxy Z Flip 4', 'https://images.unsplash.com/photo-1692725255812-0bdb8af2a0fc?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Samsung' AND category = 'phone'
UNION ALL SELECT id, 'Galaxy A54 5G', 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Samsung' AND category = 'phone'
UNION ALL SELECT id, 'Galaxy A34 5G', 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Samsung' AND category = 'phone'
UNION ALL SELECT id, 'Galaxy A14 5G', 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Samsung' AND category = 'phone'
ON CONFLICT DO NOTHING;

-- Insert OnePlus devices
INSERT INTO public.devices (brand_id, model_name, image_url)
SELECT id, 'OnePlus 12', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'OnePlus' AND category = 'phone'
UNION ALL SELECT id, 'OnePlus 12R', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'OnePlus' AND category = 'phone'
UNION ALL SELECT id, 'OnePlus 11', 'https://images.unsplash.com/photo-1591122947157-26bad3a117d2?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'OnePlus' AND category = 'phone'
UNION ALL SELECT id, 'OnePlus 11R', 'https://images.unsplash.com/photo-1591122947157-26bad3a117d2?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'OnePlus' AND category = 'phone'
UNION ALL SELECT id, 'OnePlus 10 Pro', 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'OnePlus' AND category = 'phone'
UNION ALL SELECT id, 'OnePlus 10T', 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'OnePlus' AND category = 'phone'
UNION ALL SELECT id, 'OnePlus Nord 3', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'OnePlus' AND category = 'phone'
UNION ALL SELECT id, 'OnePlus Nord CE 3', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'OnePlus' AND category = 'phone'
ON CONFLICT DO NOTHING;

-- Insert Xiaomi devices
INSERT INTO public.devices (brand_id, model_name, image_url)
SELECT id, 'Xiaomi 14 Pro', 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Xiaomi' AND category = 'phone'
UNION ALL SELECT id, 'Xiaomi 14', 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Xiaomi' AND category = 'phone'
UNION ALL SELECT id, 'Xiaomi 13 Pro', 'https://images.unsplash.com/photo-1591122947157-26bad3a117d2?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Xiaomi' AND category = 'phone'
UNION ALL SELECT id, 'Xiaomi 13', 'https://images.unsplash.com/photo-1591122947157-26bad3a117d2?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Xiaomi' AND category = 'phone'
UNION ALL SELECT id, 'Redmi Note 13 Pro+', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Xiaomi' AND category = 'phone'
UNION ALL SELECT id, 'Redmi Note 13 Pro', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Xiaomi' AND category = 'phone'
UNION ALL SELECT id, 'Redmi Note 12 Pro+', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Xiaomi' AND category = 'phone'
ON CONFLICT DO NOTHING;

-- Insert Google Pixel devices
INSERT INTO public.devices (brand_id, model_name, image_url)
SELECT id, 'Pixel 8 Pro', 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Google' AND category = 'phone'
UNION ALL SELECT id, 'Pixel 8', 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Google' AND category = 'phone'
UNION ALL SELECT id, 'Pixel 7 Pro', 'https://images.unsplash.com/photo-1591122947157-26bad3a117d2?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Google' AND category = 'phone'
UNION ALL SELECT id, 'Pixel 7', 'https://images.unsplash.com/photo-1591122947157-26bad3a117d2?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Google' AND category = 'phone'
UNION ALL SELECT id, 'Pixel 6 Pro', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Google' AND category = 'phone'
UNION ALL SELECT id, 'Pixel 6', 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Google' AND category = 'phone'
ON CONFLICT DO NOTHING;

-- Insert MacBook devices
INSERT INTO public.devices (brand_id, model_name, image_url)
SELECT id, 'MacBook Air M3 13"', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'laptop'
UNION ALL SELECT id, 'MacBook Air M2 13"', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'laptop'
UNION ALL SELECT id, 'MacBook Air M1 13"', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'laptop'
UNION ALL SELECT id, 'MacBook Pro M3 Max 16"', 'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'laptop'
UNION ALL SELECT id, 'MacBook Pro M3 Pro 16"', 'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'laptop'
UNION ALL SELECT id, 'MacBook Pro M3 14"', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'laptop'
UNION ALL SELECT id, 'MacBook Pro M2 Pro 16"', 'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'laptop'
UNION ALL SELECT id, 'MacBook Pro M2 14"', 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'laptop'
ON CONFLICT DO NOTHING;

-- Insert Dell laptops
INSERT INTO public.devices (brand_id, model_name, image_url)
SELECT id, 'Dell XPS 17', 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Dell' AND category = 'laptop'
UNION ALL SELECT id, 'Dell XPS 15', 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Dell' AND category = 'laptop'
UNION ALL SELECT id, 'Dell XPS 13', 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Dell' AND category = 'laptop'
UNION ALL SELECT id, 'Dell Inspiron 15 7000', 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Dell' AND category = 'laptop'
UNION ALL SELECT id, 'Dell Inspiron 15 5000', 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Dell' AND category = 'laptop'
UNION ALL SELECT id, 'Dell Inspiron 14 3000', 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Dell' AND category = 'laptop'
ON CONFLICT DO NOTHING;

-- Insert HP laptops
INSERT INTO public.devices (brand_id, model_name, image_url)
SELECT id, 'HP Spectre x360 16"', 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'HP' AND category = 'laptop'
UNION ALL SELECT id, 'HP Spectre x360 14"', 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'HP' AND category = 'laptop'
UNION ALL SELECT id, 'HP Envy 17', 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'HP' AND category = 'laptop'
UNION ALL SELECT id, 'HP Envy 15', 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'HP' AND category = 'laptop'
UNION ALL SELECT id, 'HP Pavilion 15', 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'HP' AND category = 'laptop'
UNION ALL SELECT id, 'HP Pavilion 14', 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'HP' AND category = 'laptop'
ON CONFLICT DO NOTHING;

-- Insert Lenovo laptops
INSERT INTO public.devices (brand_id, model_name, image_url)
SELECT id, 'Lenovo ThinkPad X1 Carbon Gen 11', 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Lenovo' AND category = 'laptop'
UNION ALL SELECT id, 'Lenovo ThinkPad X1 Yoga Gen 8', 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Lenovo' AND category = 'laptop'
UNION ALL SELECT id, 'Lenovo ThinkPad T14 Gen 4', 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Lenovo' AND category = 'laptop'
UNION ALL SELECT id, 'Lenovo IdeaPad Slim 5', 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Lenovo' AND category = 'laptop'
UNION ALL SELECT id, 'Lenovo IdeaPad Slim 3', 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Lenovo' AND category = 'laptop'
UNION ALL SELECT id, 'Lenovo Yoga 9i', 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Lenovo' AND category = 'laptop'
ON CONFLICT DO NOTHING;

-- Insert iPad devices
INSERT INTO public.devices (brand_id, model_name, image_url)
SELECT id, 'iPad Pro 12.9" M4 (2024)', 'https://images.unsplash.com/photo-1585790050230-5dd28404f3da?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'ipad'
UNION ALL SELECT id, 'iPad Pro 11" M4 (2024)', 'https://images.unsplash.com/photo-1585790050230-5dd28404f3da?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'ipad'
UNION ALL SELECT id, 'iPad Pro 12.9" M2 (2022)', 'https://images.unsplash.com/photo-1585790050230-5dd28404f3da?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'ipad'
UNION ALL SELECT id, 'iPad Pro 11" M2 (2022)', 'https://images.unsplash.com/photo-1585790050230-5dd28404f3da?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'ipad'
UNION ALL SELECT id, 'iPad Air M2 (2024)', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'ipad'
UNION ALL SELECT id, 'iPad Air M1 (2022)', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'ipad'
UNION ALL SELECT id, 'iPad (10th Gen)', 'https://images.unsplash.com/photo-1561154464-82e9adf32764?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'ipad'
UNION ALL SELECT id, 'iPad (9th Gen)', 'https://images.unsplash.com/photo-1561154464-82e9adf32764?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'ipad'
UNION ALL SELECT id, 'iPad Mini (6th Gen)', 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=400&h=400&fit=crop' FROM public.brands WHERE name = 'Apple' AND category = 'ipad'
ON CONFLICT DO NOTHING;