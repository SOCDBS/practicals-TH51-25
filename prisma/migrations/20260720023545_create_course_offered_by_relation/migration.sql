-- AddForeignKey
ALTER TABLE "course" ADD CONSTRAINT "course_offered_by_fk" FOREIGN KEY ("offered_by") REFERENCES "department"("dept_code") ON DELETE RESTRICT ON UPDATE CASCADE;
