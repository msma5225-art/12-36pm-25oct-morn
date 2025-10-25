/*
  # Add Image URL to Devices Table

  ## Changes
  1. Schema Update
    - Add `image_url` column to `devices` table
      - Type: TEXT (to store image URLs)
      - Nullable: true (for backward compatibility with existing devices)
      - Description: Stores the URL of the device image to be displayed in the UI

  ## Purpose
  This migration adds support for device images in the selection interface,
  allowing users to see visual representations of phones, laptops, and iPads
  alongside the model names for a better browsing experience.
*/

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'devices' AND column_name = 'image_url'
  ) THEN
    ALTER TABLE public.devices ADD COLUMN image_url TEXT;
  END IF;
END $$;