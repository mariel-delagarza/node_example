/*
  Warnings:

  - Added the required column `fin` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `shadowSize` on the `Fish` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Fish" ADD COLUMN     "fin" BOOLEAN NOT NULL,
DROP COLUMN "shadowSize",
ADD COLUMN     "shadowSize" INTEGER NOT NULL;
