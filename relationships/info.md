
The Unified Modeling Language (UML) is a de facto standard for modeling object-oriented systems. In UML there are five different types of relationships: association, aggregation, composition, dependency, and inheritance. 


ASSOCIATION: 

An association is a “using” relationship between two or more objects in which the objects have their own lifetime and there is no owner.

As an example, imagine the relationship between a doctor and a patient. A doctor can be associated with multiple patients. At the same time, one patient can visit multiple doctors for treatment or consultation. Each of these objects has its own life cycle and there is no “owner” or parent. The objects that are part of the association relationship can be created and destroyed independently.

Here's the Ruby equivalent of the provided code:

```ruby
class IDGBlogAccount
  attr_accessor :blogEntries

  def initialize
    @blogEntries = []
  end

  # Other members of the IDGBlogAccount class
end

class IDGBlogEntry
  attr_accessor :blogId, :caption, :text

  # Other members of the IDGBlogEntry class
end
```

AGGREGATION is a specialized form of association between two or more objects in which each object has its own life cycle but there exists an ownership as wel

An essential property of an aggregation relationship is that the whole or parent (i.e. the owner) can exist without the part or child and vice versa

As an example, an employee may belong to one or more departments in an organization. However, if an employee’s department is deleted, the employee object would not be destroyed but would live on. Note that the relationships between objects participating in an aggregation cannot be reciprocal—i.e., a department may “own” an employee, but the employee does not own the department. 

Aggregation is usually represented in UML using a line with a hollow diamond. Like association, aggregation can involve a one-to-one, one-to-many, or many-to-many relationship between the participating objects. In the case of a one-to-many or many-to-many relationship, we may say that it is a redundant relationship.



COMPOSITION
Composition is a specialized form of aggregation. In composition, if the parent object is destroyed, then the child objects also cease to exist.

As an example, a house may be composed of one or more rooms. If the house is destroyed, then all of the rooms that are part of the house are also destroyed.

```ruby
class House
  def initialize
    @room = Room.new
  end
end

class Room
  # Room class implementation
end
``` 

However, in composition the life cycle of the part or child is controlled by the whole or parent that owns it.

It should be noted that this control can either be direct or transitive. 

That is, the parent may be directly responsible for the creation or destruction of the child or the parent may use a child that has been already created. Similarly, a parent object might delegate the control to some other parent to destroy the child object. Composition is represented in UML using a line connecting the objects with a solid diamond at the end of the object that owns the other object.



Summary

Remember that aggregation and composition are both subsets of association. In both aggregation and composition, an object of one class can be the owner of an object of another class. And in both aggregation and composition, the child objects belong to a single parent object, i.e., they may have only one owner.

Finally, in an aggregation relationship, the life cycles of parent objects and child objects are independent. In a composition relationship, the death of a parent object also means the death of its children.





# PART 2

Composition: Car class contains Engine. Engine cannot exist without a Car. There exists composition between Car and Engine.


