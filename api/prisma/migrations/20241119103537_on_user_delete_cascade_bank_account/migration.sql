-- DropForeignKey
ALTER TABLE "bank_account" DROP CONSTRAINT "bank_account_user_id_fkey";

-- AddForeignKey
ALTER TABLE "bank_account" ADD CONSTRAINT "bank_account_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;
