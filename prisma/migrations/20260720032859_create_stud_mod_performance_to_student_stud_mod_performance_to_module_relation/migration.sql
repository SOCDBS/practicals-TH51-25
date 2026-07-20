/*
  Warnings:

  - The primary key for the `student` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `adm_no` on the `student` table. The data in that column could be lost. The data in that column will be cast from `Integer` to `Char(4)`.

*/
-- AlterTable
ALTER TABLE "student" DROP CONSTRAINT "student_pkey",
ALTER COLUMN "adm_no" SET DATA TYPE CHAR(4),
ADD CONSTRAINT "student_pkey" PRIMARY KEY ("adm_no");

-- AddForeignKey
ALTER TABLE "stud_mod_performance" ADD CONSTRAINT "stud_mod_performance_student_adm_no_fk" FOREIGN KEY ("adm_no") REFERENCES "student"("adm_no") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stud_mod_performance" ADD CONSTRAINT "stud_mod_performance_module_mod_code_fk" FOREIGN KEY ("mod_registered") REFERENCES "module"("mod_code") ON DELETE RESTRICT ON UPDATE CASCADE;
