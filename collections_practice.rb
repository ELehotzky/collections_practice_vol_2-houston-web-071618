# your code goes here
require "pry"

def begins_with_r(array)
	return array.all? {|element| element.start_with?("r")}
end

def contain_a(array)
	array.select do |word| 
		word.include?("a")
	end
end

def first_wa(array)
	array.find do |word|
		word.to_s.start_with?("wa")
		#need .to_s because the array is of symbols
	end
end

def remove_non_strings(array)
	array.delete_if do |element|
		!(element.is_a? String)
	end
end

def count_elements(array)
	array.group_by(&:itself).map do |key, value|
		key.merge(count: value.length)
	end
end

def merge_data(keys, data)
	merged_data = []
	keys.each do |key_value|
		data.each do |data_value|
			add = key_value.merge(data_value[key_value.values.first])
			merged_data << add
		end
	end
	merged_data
end

def find_cool(array)
	array.select do |person|
		person[:temperature] == "cool"
	end
end

def organize_schools(schools)
	org = {}
	schools.each do |school|
		key = school.last[:location]
		if org[key]
			org[key] << school.first
		else 
			org[key] = [school.first]
		end
	end
	org
end

