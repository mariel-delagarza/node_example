/*
  Warnings:

  - You are about to drop the column `location_id` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `value_id` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `location_id` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `shadowSize_id` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `value_id` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the `Location` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ShadowSize` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Value` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `location` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `value` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `location` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `shadowSize` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `value` to the `Fish` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Bug" DROP CONSTRAINT "Bug_location_id_fkey";

-- DropForeignKey
ALTER TABLE "Bug" DROP CONSTRAINT "Bug_value_id_fkey";

-- DropForeignKey
ALTER TABLE "Fish" DROP CONSTRAINT "Fish_location_id_fkey";

-- DropForeignKey
ALTER TABLE "Fish" DROP CONSTRAINT "Fish_shadowSize_id_fkey";

-- DropForeignKey
ALTER TABLE "Fish" DROP CONSTRAINT "Fish_value_id_fkey";

-- AlterTable
ALTER TABLE "Bug" DROP COLUMN "location_id",
DROP COLUMN "value_id",
ADD COLUMN     "location" TEXT NOT NULL,
ADD COLUMN     "value" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Fish" DROP COLUMN "location_id",
DROP COLUMN "shadowSize_id",
DROP COLUMN "value_id",
ADD COLUMN     "location" TEXT NOT NULL,
ADD COLUMN     "shadowSize" TEXT NOT NULL,
ADD COLUMN     "value" INTEGER NOT NULL;

-- DropTable
DROP TABLE "Location";

-- DropTable
DROP TABLE "ShadowSize";

-- DropTable
DROP TABLE "Value";
