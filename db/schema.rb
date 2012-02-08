# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120208025541) do

  create_table "customer_problem_prediction_lists", :force => true do |t|
    t.string   "problem_1_prediction"
    t.string   "problem_1_pain_level_prediction"
    t.string   "problem_2_prediction"
    t.string   "problem_2_pain_level_prediction"
    t.string   "problem_3_prediction"
    t.string   "problem_3_pain_level_prediction"
    t.integer  "interview_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_segment_prediction_lists", :force => true do |t|
    t.string   "customer_segment_1_prediction"
    t.string   "customer_segment_2_prediction"
    t.string   "customer_segment_3_prediction"
    t.integer  "interview_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  create_table "customer_solution_prediction_lists", :force => true do |t|
    t.string   "existing_solution_1_prediction"
    t.string   "existing_solution_2_prediction"
    t.string   "existing_solution_3_prediction"
    t.integer  "interview_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interviews", :force => true do |t|
    t.string   "name"
    t.string   "interview_type"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  create_table "pain_levels", :force => true do |t|
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "problem_prediction_lists", :force => true do |t|
    t.string   "problem_1_prediction"
    t.string   "problem_1_pain_level_prediction"
    t.string   "problem_2_prediction"
    t.string   "problem_2_pain_level_prediction"
    t.string   "problem_3_prediction"
    t.string   "problem_3_pain_level_prediction"
    t.integer  "interview_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
