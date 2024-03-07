-- CreateEnum
CREATE TYPE "OwnedBook" AS ENUM ('EBOOK', 'PHYSICAL', 'BOTH');

-- CreateTable
CREATE TABLE "PersonalLibrary" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "type" "OwnedBook" NOT NULL,
    "bookId" INTEGER NOT NULL,

    CONSTRAINT "PersonalLibrary_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "PersonalLibrary_bookId_key" ON "PersonalLibrary"("bookId");

-- AddForeignKey
ALTER TABLE "PersonalLibrary" ADD CONSTRAINT "PersonalLibrary_bookId_fkey" FOREIGN KEY ("bookId") REFERENCES "Book"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
