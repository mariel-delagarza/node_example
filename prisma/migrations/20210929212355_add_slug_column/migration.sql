/*
  Warnings:

  - A unique constraint covering the columns `[slug]` on the table `Bug` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[slug]` on the table `Fish` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "Bug" ADD COLUMN     "slug" TEXT NOT NULL DEFAULT E'empty';

-- AlterTable
ALTER TABLE "Fish" ADD COLUMN     "slug" TEXT NOT NULL DEFAULT E'empty';

-- CreateIndex
CREATE UNIQUE INDEX "Bug.slug_unique" ON "Bug"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "Fish.slug_unique" ON "Fish"("slug");
