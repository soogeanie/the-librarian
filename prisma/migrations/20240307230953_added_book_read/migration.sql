-- CreateTable
CREATE TABLE "BookRead" (
    "id" SERIAL NOT NULL,
    "startAt" TIMESTAMP(3),
    "endAt" TIMESTAMP(3) NOT NULL,
    "bookId" INTEGER NOT NULL,

    CONSTRAINT "BookRead_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "BookRead" ADD CONSTRAINT "BookRead_bookId_fkey" FOREIGN KEY ("bookId") REFERENCES "Book"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
