/*
  Warnings:

  - You are about to drop the column `userId` on the `bank_account` table. All the data in the column will be lost.
  - Added the required column `user_id` to the `bank_account` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "bank_account" DROP COLUMN "userId",
ADD COLUMN     "user_id" UUID NOT NULL;

-- AddForeignKey
ALTER TABLE "bank_account" ADD CONSTRAINT "bank_account_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
