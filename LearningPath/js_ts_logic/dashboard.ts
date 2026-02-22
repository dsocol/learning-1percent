interface Task {
    id: number;
    titlu: string;
    status: 'pending' | 'done';
}

const listaMea: Task[] = [
    { id: 1, titlu: "Învață Java", status: 'done' },
    { id: 2, titlu: "Învață TypeScript", status: 'pending' }
];

function afiseazaDashboard(items: Task[]) {
    items.forEach(item => {
        const icon = item.status === 'done' ? '✅' : '⏳';
        console.log(`${icon} Task #${item.id}: ${item.titlu}`);
    });
}

afiseazaDashboard(listaMea);
