<?php

namespace App\Http\Livewire;

use App\Events\CommentCreated;
use App\Models\Question as ModelsQuestion;
use Livewire\Component;

class Question extends Component
{
    public $model,$user;

    public $message; 


    public $cant = 10;

    public $question_edit = [
        'id' => null,
        'body' => ''
    ];

   

    public function getQuestionsProperty()
    {
        return $this->model
                ->questions()
                ->orderBy('created_at','desc')
                ->take($this->cant)
                ->get();
    }

   

    public function store()
    {
        $this->validate([
            'message' => 'required'
        ]);

      $question = $this->model->questions()->create([
        'body' => $this->message,
        'user_id' => auth()->id(),

      ]);
 
      $this->message = '';
      CommentCreated::dispatch($question);
     
    }

    protected $validationAttributes = [
        'message' => 'comentario',
        'question_edit.body' => ''
    ];

    public function edit($questionId)
    {
        $question = ModelsQuestion::find($questionId);

        $this->question_edit = [
            'id' => $question->id,
            'body' => $question->body
        ];
    }

    public function update()
    {
        $this->validate([
            'question_edit.body' => 'required'
        ]);

        $question = ModelsQuestion::find($this->question_edit['id']);
        
        $question->update([
            'body' => $this->question_edit['body']
        ]);

        $this->reset('question_edit');

    }


    public function destroy($questionId)
    {
        $question = ModelsQuestion::find($questionId);
        $question->delete();
        
        $this->reset('question_edit');
    }


    public function cancel()
    {
        $this->reset('question_edit');
    }

    public function show_more_question()
    {
        $this->cant +=10;
    }
    
    public function render()
    {
        return view('livewire.question');
    }
}
