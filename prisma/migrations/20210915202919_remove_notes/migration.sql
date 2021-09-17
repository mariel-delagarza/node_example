/*
  Warnings:

  - You are about to drop the column `notes` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `notes` on the `Fish` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Bug" DROP COLUMN "notes";

-- AlterTable
ALTER TABLE "Fish" DROP COLUMN "notes";
