-- CreateTable
CREATE TABLE "Shelf" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Shelf_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BooksOnShelves" (
    "bookId" INTEGER NOT NULL,
    "shelfId" INTEGER NOT NULL,
    "addedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BooksOnShelves_pkey" PRIMARY KEY ("bookId","shelfId")
);

-- CreateIndex
CREATE UNIQUE INDEX "Shelf_name_key" ON "Shelf"("name");

-- AddForeignKey
ALTER TABLE "BooksOnShelves" ADD CONSTRAINT "BooksOnShelves_bookId_fkey" FOREIGN KEY ("bookId") REFERENCES "Book"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BooksOnShelves" ADD CONSTRAINT "BooksOnShelves_shelfId_fkey" FOREIGN KEY ("shelfId") REFERENCES "Shelf"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
